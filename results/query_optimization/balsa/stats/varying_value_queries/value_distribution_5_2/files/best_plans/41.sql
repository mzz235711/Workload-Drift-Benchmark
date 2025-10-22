/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>86 AND p.Score<167 AND p.CommentCount>4 AND p.CommentCount<22 AND u.DownVotes>166 AND u.DownVotes<1402 AND v.CreationDate>'2011-07-09 23:23:36'::timestamp AND v.CreationDate<'2012-06-13 04:10:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-02-22 13:37:07'::timestamp AND b.Date<'2013-03-22 23:56:52'::timestamp;

