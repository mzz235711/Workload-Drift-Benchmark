/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<59 AND p.CommentCount>19 AND p.CommentCount<33 AND u.DownVotes>432 AND u.DownVotes<1379 AND v.CreationDate>'2010-06-28 09:31:29'::timestamp AND v.CreationDate<'2013-03-09 19:12:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-10-29 08:18:16'::timestamp AND b.Date<'2014-05-22 09:06:55'::timestamp;

