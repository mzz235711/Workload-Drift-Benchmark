/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>53 AND p.Score<135 AND p.CommentCount>9 AND p.CommentCount<43 AND u.DownVotes>756 AND u.DownVotes<1711 AND v.CreationDate>'2009-04-05 02:48:58'::timestamp AND v.CreationDate<'2011-12-03 01:18:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-07-25 09:26:33'::timestamp AND b.Date<'2014-07-02 10:56:04'::timestamp;

