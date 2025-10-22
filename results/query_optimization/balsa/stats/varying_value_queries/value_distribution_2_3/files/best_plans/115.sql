/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<172 AND p.CommentCount>7 AND p.CommentCount<16 AND u.DownVotes>26 AND u.DownVotes<1187 AND v.CreationDate>'2012-02-07 08:37:29'::timestamp AND v.CreationDate<'2014-07-08 18:25:00'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-05-14 18:07:57'::timestamp AND b.Date<'2014-09-04 06:58:08'::timestamp;

