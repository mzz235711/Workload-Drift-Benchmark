/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>113 AND p.Score<184 AND p.CommentCount>2 AND p.CommentCount<37 AND u.DownVotes>20 AND u.DownVotes<1731 AND v.CreationDate>'2010-11-30 18:09:52'::timestamp AND v.CreationDate<'2012-03-30 00:41:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-11-12 11:28:47'::timestamp AND b.Date<'2010-12-09 16:24:43'::timestamp;

