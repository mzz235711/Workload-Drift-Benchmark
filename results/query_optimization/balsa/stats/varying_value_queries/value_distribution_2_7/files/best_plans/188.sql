/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<61 AND p.CommentCount>17 AND p.CommentCount<27 AND u.DownVotes>117 AND u.DownVotes<631 AND v.CreationDate>'2010-08-04 21:30:27'::timestamp AND v.CreationDate<'2012-10-12 02:24:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-12-13 08:52:49'::timestamp AND b.Date<'2014-07-18 04:13:57'::timestamp;

