/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<142 AND p.CommentCount>3 AND p.CommentCount<9 AND u.DownVotes>686 AND u.DownVotes<1192 AND v.CreationDate>'2009-11-06 22:12:34'::timestamp AND v.CreationDate<'2012-08-25 00:53:27'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-09-27 02:01:29'::timestamp AND b.Date<'2013-12-06 11:24:36'::timestamp;

