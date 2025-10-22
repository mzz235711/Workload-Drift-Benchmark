/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>83 AND p.Score<142 AND p.CommentCount>1 AND p.CommentCount<22 AND u.DownVotes>580 AND u.DownVotes<1864 AND v.CreationDate>'2010-05-28 07:48:21'::timestamp AND v.CreationDate<'2012-06-21 19:52:56'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-02-05 09:13:52'::timestamp AND b.Date<'2014-01-28 01:57:55'::timestamp;

