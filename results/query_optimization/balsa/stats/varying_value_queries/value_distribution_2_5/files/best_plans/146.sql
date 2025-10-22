/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<174 AND p.CommentCount>10 AND p.CommentCount<31 AND u.DownVotes>681 AND u.DownVotes<1771 AND v.CreationDate>'2010-09-14 02:04:05'::timestamp AND v.CreationDate<'2011-08-06 19:37:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-07-11 01:16:31'::timestamp AND b.Date<'2013-11-18 21:23:12'::timestamp;

