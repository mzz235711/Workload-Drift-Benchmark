/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<169 AND p.CommentCount>6 AND p.CommentCount<42 AND u.DownVotes>75 AND u.DownVotes<264 AND v.CreationDate>'2009-09-13 16:05:52'::timestamp AND v.CreationDate<'2011-12-31 05:41:03'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2012-02-11 02:58:11'::timestamp AND b.Date<'2012-09-01 05:23:27'::timestamp;

