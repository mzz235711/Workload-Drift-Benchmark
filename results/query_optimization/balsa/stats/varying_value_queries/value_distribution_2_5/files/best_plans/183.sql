/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<67 AND p.CommentCount>1 AND p.CommentCount<37 AND u.DownVotes>139 AND u.DownVotes<1859 AND v.CreationDate>'2009-11-13 10:45:08'::timestamp AND v.CreationDate<'2012-05-02 01:53:56'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2010-09-07 09:23:34'::timestamp AND b.Date<'2014-02-27 18:11:10'::timestamp;

