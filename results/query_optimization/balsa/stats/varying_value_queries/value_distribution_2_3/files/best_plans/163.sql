/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<179 AND p.CommentCount>8 AND p.CommentCount<26 AND u.DownVotes>587 AND u.DownVotes<1245 AND v.CreationDate>'2010-11-30 05:57:34'::timestamp AND v.CreationDate<'2014-07-21 18:25:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-05-04 08:58:18'::timestamp AND b.Date<'2013-12-23 03:37:13'::timestamp;

