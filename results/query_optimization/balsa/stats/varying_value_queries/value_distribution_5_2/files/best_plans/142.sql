/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<136 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>404 AND u.DownVotes<1412 AND v.CreationDate>'2010-08-29 15:16:46'::timestamp AND v.CreationDate<'2014-02-13 10:07:11'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<15 AND b.Date>'2011-08-21 19:47:13'::timestamp AND b.Date<'2014-06-22 12:39:36'::timestamp;

