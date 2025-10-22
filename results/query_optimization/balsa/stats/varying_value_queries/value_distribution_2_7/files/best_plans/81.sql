/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<145 AND p.CommentCount>17 AND p.CommentCount<26 AND u.DownVotes>11 AND u.DownVotes<1353 AND v.CreationDate>'2012-01-05 00:21:32'::timestamp AND v.CreationDate<'2014-07-01 20:10:10'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2013-07-19 00:19:29'::timestamp AND b.Date<'2014-03-18 06:24:40'::timestamp;

