/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>74 AND p.Score<133 AND p.CommentCount>2 AND p.CommentCount<34 AND u.DownVotes>581 AND u.DownVotes<939 AND v.CreationDate>'2011-08-04 20:07:24'::timestamp AND v.CreationDate<'2012-08-04 11:14:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-02-12 12:44:51'::timestamp AND b.Date<'2012-01-29 01:16:06'::timestamp;

