/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<154 AND p.CommentCount>4 AND p.CommentCount<7 AND u.DownVotes>632 AND u.DownVotes<1671 AND v.CreationDate>'2010-08-26 01:07:54'::timestamp AND v.CreationDate<'2014-04-01 18:50:06'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2012-05-10 21:53:53'::timestamp AND b.Date<'2012-09-30 20:44:26'::timestamp;

