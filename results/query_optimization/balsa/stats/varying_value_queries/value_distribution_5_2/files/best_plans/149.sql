/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<160 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>42 AND u.DownVotes<497 AND v.CreationDate>'2013-11-12 03:33:27'::timestamp AND v.CreationDate<'2014-06-11 08:47:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-07-29 15:08:51'::timestamp AND b.Date<'2012-09-08 16:08:16'::timestamp;

