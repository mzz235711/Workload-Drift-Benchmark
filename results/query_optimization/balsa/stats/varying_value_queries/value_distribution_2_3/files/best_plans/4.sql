/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<115 AND p.CommentCount>2 AND p.CommentCount<31 AND u.DownVotes>34 AND u.DownVotes<394 AND v.CreationDate>'2012-08-15 08:56:54'::timestamp AND v.CreationDate<'2014-04-07 00:27:34'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2010-09-21 09:15:47'::timestamp AND b.Date<'2013-10-17 00:32:03'::timestamp;

