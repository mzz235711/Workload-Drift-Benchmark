/*+ MergeJoin(v b u p)
 MergeJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>74 AND p.Score<116 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>368 AND u.DownVotes<989 AND v.CreationDate>'2012-01-03 07:30:33'::timestamp AND v.CreationDate<'2013-08-21 05:52:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-02-29 22:48:02'::timestamp AND b.Date<'2014-08-08 19:31:32'::timestamp;

