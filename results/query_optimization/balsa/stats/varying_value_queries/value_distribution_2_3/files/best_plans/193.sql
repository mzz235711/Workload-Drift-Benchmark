/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<100 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>188 AND u.DownVotes<577 AND v.CreationDate>'2009-05-05 12:00:29'::timestamp AND v.CreationDate<'2013-09-02 06:19:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2013-02-18 06:03:08'::timestamp AND b.Date<'2013-12-21 07:32:44'::timestamp;

