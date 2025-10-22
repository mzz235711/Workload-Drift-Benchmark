/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<106 AND p.CommentCount>4 AND p.CommentCount<42 AND u.DownVotes>24 AND u.DownVotes<1198 AND v.CreationDate>'2012-08-15 10:33:02'::timestamp AND v.CreationDate<'2012-08-28 15:39:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-08-06 22:24:39'::timestamp AND b.Date<'2012-11-30 21:35:30'::timestamp;

