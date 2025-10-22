/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<80 AND p.CommentCount>4 AND p.CommentCount<38 AND u.DownVotes>367 AND u.DownVotes<1284 AND v.CreationDate>'2011-08-03 06:51:24'::timestamp AND v.CreationDate<'2012-12-15 22:44:22'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2010-11-07 14:04:01'::timestamp AND b.Date<'2012-09-12 11:57:55'::timestamp;

