/*+ HashJoin(v u b p)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 Leading((v ((u b) p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<49 AND p.CommentCount>12 AND p.CommentCount<30 AND u.DownVotes>52 AND u.DownVotes<1281 AND v.CreationDate>'2012-08-09 11:12:13'::timestamp AND v.CreationDate<'2013-03-05 23:02:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-01-09 09:49:30'::timestamp AND b.Date<'2011-01-25 15:48:17'::timestamp;

