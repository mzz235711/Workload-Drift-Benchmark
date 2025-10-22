/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<143 AND p.CommentCount>9 AND p.CommentCount<43 AND u.DownVotes>403 AND u.DownVotes<1050 AND v.CreationDate>'2011-02-24 07:56:26'::timestamp AND v.CreationDate<'2013-12-06 14:05:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-06-17 02:40:23'::timestamp AND b.Date<'2013-11-18 05:31:26'::timestamp;

