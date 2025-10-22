/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<105 AND p.CommentCount>12 AND p.CommentCount<33 AND u.DownVotes>558 AND u.DownVotes<1683 AND v.CreationDate>'2009-12-28 23:41:17'::timestamp AND v.CreationDate<'2014-08-19 22:57:52'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2011-04-07 13:22:14'::timestamp AND b.Date<'2013-07-09 06:06:48'::timestamp;

