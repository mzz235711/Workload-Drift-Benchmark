/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<137 AND p.CommentCount>19 AND p.CommentCount<36 AND u.DownVotes>75 AND u.DownVotes<388 AND v.CreationDate>'2009-09-12 16:59:46'::timestamp AND v.CreationDate<'2014-05-13 23:53:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-11-11 10:29:16'::timestamp AND b.Date<'2014-08-05 06:31:10'::timestamp;

