/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<168 AND p.CommentCount>10 AND p.CommentCount<15 AND u.DownVotes>387 AND u.DownVotes<830 AND v.CreationDate>'2009-05-18 19:04:13'::timestamp AND v.CreationDate<'2014-01-09 10:18:48'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2010-09-24 22:55:33'::timestamp AND b.Date<'2013-04-21 16:41:50'::timestamp;

