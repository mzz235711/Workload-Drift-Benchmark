/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<68 AND p.CommentCount>19 AND p.CommentCount<28 AND u.DownVotes>48 AND u.DownVotes<568 AND v.CreationDate>'2011-05-28 08:52:46'::timestamp AND v.CreationDate<'2013-08-02 11:53:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-01-14 03:11:32'::timestamp AND b.Date<'2013-09-14 21:37:09'::timestamp;

