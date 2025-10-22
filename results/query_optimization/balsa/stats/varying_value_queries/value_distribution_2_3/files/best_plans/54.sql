/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<134 AND p.CommentCount>3 AND p.CommentCount<38 AND u.DownVotes>116 AND u.DownVotes<454 AND v.CreationDate>'2009-05-30 17:21:53'::timestamp AND v.CreationDate<'2013-09-01 07:07:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2012-07-05 09:05:24'::timestamp AND b.Date<'2013-02-28 23:52:27'::timestamp;

