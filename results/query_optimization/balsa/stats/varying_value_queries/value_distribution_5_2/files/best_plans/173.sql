/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<136 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>22 AND u.DownVotes<1590 AND v.CreationDate>'2010-06-22 21:18:41'::timestamp AND v.CreationDate<'2011-10-11 07:50:47'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2011-08-13 18:49:32'::timestamp AND b.Date<'2011-10-04 01:52:05'::timestamp;

