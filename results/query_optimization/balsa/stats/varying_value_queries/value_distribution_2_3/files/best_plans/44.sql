/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<42 AND p.CommentCount>17 AND p.CommentCount<44 AND u.DownVotes>25 AND u.DownVotes<394 AND v.CreationDate>'2011-08-30 18:53:51'::timestamp AND v.CreationDate<'2013-10-31 08:25:18'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2014-07-11 07:37:30'::timestamp AND b.Date<'2014-08-29 12:43:04'::timestamp;

