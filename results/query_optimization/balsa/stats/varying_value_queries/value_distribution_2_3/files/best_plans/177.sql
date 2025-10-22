/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<161 AND p.CommentCount>2 AND p.CommentCount<8 AND u.DownVotes>207 AND u.DownVotes<1375 AND v.CreationDate>'2009-02-25 15:40:53'::timestamp AND v.CreationDate<'2012-02-09 00:33:11'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2012-11-28 05:52:42'::timestamp AND b.Date<'2013-09-15 07:17:31'::timestamp;

