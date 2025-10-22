/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<137 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>108 AND u.DownVotes<1682 AND v.CreationDate>'2010-12-13 15:13:29'::timestamp AND v.CreationDate<'2014-05-27 22:44:12'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2013-03-11 11:17:23'::timestamp AND b.Date<'2013-11-12 15:52:39'::timestamp;

