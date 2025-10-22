/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>111 AND p.Score<146 AND p.CommentCount>1 AND p.CommentCount<18 AND u.DownVotes>343 AND u.DownVotes<793 AND v.CreationDate>'2012-02-13 02:25:22'::timestamp AND v.CreationDate<'2012-04-19 12:23:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-08-10 04:33:26'::timestamp AND b.Date<'2013-01-21 23:37:43'::timestamp;

