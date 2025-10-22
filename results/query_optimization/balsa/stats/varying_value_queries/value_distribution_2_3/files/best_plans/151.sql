/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<66 AND p.CommentCount>0 AND p.CommentCount<24 AND u.DownVotes>62 AND u.DownVotes<1353 AND v.CreationDate>'2010-07-18 11:17:56'::timestamp AND v.CreationDate<'2011-04-17 23:52:00'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2010-10-16 09:55:52'::timestamp AND b.Date<'2013-10-05 18:50:03'::timestamp;

