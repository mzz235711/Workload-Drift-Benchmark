/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<171 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>186 AND u.DownVotes<1014 AND v.CreationDate>'2009-03-01 08:11:00'::timestamp AND v.CreationDate<'2011-07-17 19:57:25'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2010-11-21 14:12:20'::timestamp AND b.Date<'2011-02-14 23:26:58'::timestamp;

