/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<62 AND p.CommentCount>10 AND p.CommentCount<18 AND u.DownVotes>257 AND u.DownVotes<1360 AND v.CreationDate>'2009-11-02 21:35:32'::timestamp AND v.CreationDate<'2013-11-30 14:17:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-01-09 01:19:43'::timestamp AND b.Date<'2012-09-03 06:26:08'::timestamp;

