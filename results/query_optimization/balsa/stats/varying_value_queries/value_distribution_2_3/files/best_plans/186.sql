/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>83 AND p.Score<162 AND p.CommentCount>1 AND p.CommentCount<23 AND u.DownVotes>56 AND u.DownVotes<775 AND v.CreationDate>'2012-05-30 14:25:45'::timestamp AND v.CreationDate<'2012-10-17 06:22:44'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-05-27 00:47:13'::timestamp AND b.Date<'2014-06-05 12:44:07'::timestamp;

