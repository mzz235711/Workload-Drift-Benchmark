/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<121 AND p.CommentCount>7 AND p.CommentCount<23 AND u.DownVotes>728 AND u.DownVotes<843 AND v.CreationDate>'2011-08-11 16:05:44'::timestamp AND v.CreationDate<'2013-07-09 17:39:40'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-03-13 19:47:28'::timestamp AND b.Date<'2012-01-13 02:51:57'::timestamp;

