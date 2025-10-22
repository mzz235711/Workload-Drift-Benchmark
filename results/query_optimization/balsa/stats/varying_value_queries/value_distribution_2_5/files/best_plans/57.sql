/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<125 AND p.CommentCount>1 AND p.CommentCount<10 AND u.DownVotes>8 AND u.DownVotes<1719 AND v.CreationDate>'2010-03-09 11:18:29'::timestamp AND v.CreationDate<'2011-05-31 07:17:47'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2010-12-13 07:18:17'::timestamp AND b.Date<'2012-09-17 11:31:14'::timestamp;

