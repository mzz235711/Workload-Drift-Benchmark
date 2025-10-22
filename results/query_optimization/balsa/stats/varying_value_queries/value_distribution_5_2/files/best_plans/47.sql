/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<94 AND p.CommentCount>0 AND p.CommentCount<20 AND u.DownVotes>314 AND u.DownVotes<1830 AND v.CreationDate>'2011-04-09 19:03:28'::timestamp AND v.CreationDate<'2011-09-17 15:35:02'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2010-10-11 21:23:02'::timestamp AND b.Date<'2012-08-02 23:53:26'::timestamp;

