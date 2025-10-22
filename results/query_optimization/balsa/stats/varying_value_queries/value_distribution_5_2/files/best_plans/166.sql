/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<107 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>220 AND u.DownVotes<1665 AND v.CreationDate>'2009-10-08 12:15:02'::timestamp AND v.CreationDate<'2014-02-17 15:50:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2012-01-04 19:12:01'::timestamp AND b.Date<'2012-07-16 05:36:50'::timestamp;

