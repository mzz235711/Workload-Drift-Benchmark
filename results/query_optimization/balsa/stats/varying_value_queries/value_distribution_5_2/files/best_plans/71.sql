/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<138 AND p.CommentCount>7 AND p.CommentCount<42 AND u.DownVotes>346 AND u.DownVotes<1025 AND v.CreationDate>'2012-05-07 21:23:26'::timestamp AND v.CreationDate<'2013-01-19 11:25:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-04-19 10:13:06'::timestamp AND b.Date<'2012-10-25 11:52:02'::timestamp;

