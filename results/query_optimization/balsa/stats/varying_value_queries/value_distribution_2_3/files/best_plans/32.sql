/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<127 AND p.CommentCount>11 AND p.CommentCount<27 AND u.DownVotes>467 AND u.DownVotes<869 AND v.CreationDate>'2009-05-30 08:35:41'::timestamp AND v.CreationDate<'2010-11-14 15:09:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-07-30 05:44:34'::timestamp AND b.Date<'2014-05-08 06:57:56'::timestamp;

