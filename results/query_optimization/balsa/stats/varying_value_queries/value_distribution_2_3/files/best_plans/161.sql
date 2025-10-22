/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<132 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>683 AND u.DownVotes<1592 AND v.CreationDate>'2012-06-07 22:33:01'::timestamp AND v.CreationDate<'2013-10-03 11:11:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-11-16 13:16:02'::timestamp AND b.Date<'2012-07-28 00:08:36'::timestamp;

