/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<53 AND p.CommentCount>10 AND p.CommentCount<39 AND u.DownVotes>402 AND u.DownVotes<1054 AND v.CreationDate>'2013-08-19 18:44:37'::timestamp AND v.CreationDate<'2014-05-07 15:23:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-09-11 02:26:55'::timestamp AND b.Date<'2014-05-03 22:51:12'::timestamp;

