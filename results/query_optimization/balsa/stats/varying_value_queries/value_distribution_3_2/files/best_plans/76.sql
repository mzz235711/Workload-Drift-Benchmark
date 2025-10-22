/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<36 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>318 AND u.DownVotes<1450 AND v.CreationDate>'2010-01-27 15:55:49'::timestamp AND v.CreationDate<'2012-10-21 18:19:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-06-08 21:33:07'::timestamp AND b.Date<'2014-01-29 09:26:05'::timestamp;

