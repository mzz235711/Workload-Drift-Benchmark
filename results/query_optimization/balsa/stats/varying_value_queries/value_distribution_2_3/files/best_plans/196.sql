/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<145 AND p.CommentCount>0 AND p.CommentCount<12 AND u.DownVotes>288 AND u.DownVotes<613 AND v.CreationDate>'2012-03-30 14:05:26'::timestamp AND v.CreationDate<'2013-08-31 11:20:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-08-13 08:56:56'::timestamp AND b.Date<'2014-04-12 02:49:26'::timestamp;

