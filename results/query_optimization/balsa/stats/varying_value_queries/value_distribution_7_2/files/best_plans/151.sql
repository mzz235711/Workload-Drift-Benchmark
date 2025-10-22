/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<6 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>778 AND u.DownVotes<1150 AND v.CreationDate>'2009-09-03 22:02:13'::timestamp AND v.CreationDate<'2010-10-31 12:39:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2010-08-29 20:03:48'::timestamp AND b.Date<'2014-02-28 14:23:56'::timestamp;

