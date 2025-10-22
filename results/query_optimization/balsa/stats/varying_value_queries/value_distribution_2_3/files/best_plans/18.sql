/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>126 AND p.Score<152 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>197 AND u.DownVotes<1483 AND v.CreationDate>'2011-05-18 02:39:16'::timestamp AND v.CreationDate<'2014-08-15 12:52:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-09-23 21:06:52'::timestamp AND b.Date<'2014-06-06 09:28:12'::timestamp;

