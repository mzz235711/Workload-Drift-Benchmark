/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<161 AND p.CommentCount>9 AND p.CommentCount<39 AND u.DownVotes>41 AND u.DownVotes<132 AND v.CreationDate>'2011-03-25 01:45:21'::timestamp AND v.CreationDate<'2012-07-14 02:58:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-08-22 08:54:05'::timestamp AND b.Date<'2013-04-21 10:31:29'::timestamp;

