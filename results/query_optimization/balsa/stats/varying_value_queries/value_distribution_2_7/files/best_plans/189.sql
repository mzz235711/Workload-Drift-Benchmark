/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>61 AND p.Score<112 AND p.CommentCount>5 AND p.CommentCount<33 AND u.DownVotes>420 AND u.DownVotes<1075 AND v.CreationDate>'2011-02-23 04:40:27'::timestamp AND v.CreationDate<'2014-02-24 09:07:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2013-07-23 00:05:21'::timestamp AND b.Date<'2014-04-28 04:59:44'::timestamp;

