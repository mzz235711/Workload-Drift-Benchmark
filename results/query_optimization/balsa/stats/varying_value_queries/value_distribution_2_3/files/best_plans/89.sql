/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>97 AND p.Score<149 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>368 AND u.DownVotes<1034 AND v.CreationDate>'2011-08-04 03:02:32'::timestamp AND v.CreationDate<'2011-12-24 01:43:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-04-06 18:31:55'::timestamp AND b.Date<'2014-06-05 10:29:41'::timestamp;

