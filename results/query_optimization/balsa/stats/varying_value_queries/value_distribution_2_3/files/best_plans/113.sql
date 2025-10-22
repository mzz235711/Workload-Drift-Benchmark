/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<152 AND p.CommentCount>7 AND p.CommentCount<42 AND u.DownVotes>665 AND u.DownVotes<1749 AND v.CreationDate>'2011-03-25 19:17:44'::timestamp AND v.CreationDate<'2014-08-16 15:08:22'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-07-15 01:11:54'::timestamp AND b.Date<'2012-04-04 00:32:10'::timestamp;

