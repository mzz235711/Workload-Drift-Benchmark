/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<147 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>667 AND u.DownVotes<1623 AND v.CreationDate>'2009-07-10 07:23:30'::timestamp AND v.CreationDate<'2014-07-23 07:38:00'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-10-11 18:57:16'::timestamp AND b.Date<'2013-11-28 19:43:57'::timestamp;

