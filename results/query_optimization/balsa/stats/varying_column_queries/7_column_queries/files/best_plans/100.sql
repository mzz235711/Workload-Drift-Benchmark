/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-08-08 23:24:20'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-04 16:29:26'::timestamp AND u.Reputation>=1 AND u.Reputation<=161 AND u.CreationDate<='2014-09-02 09:26:33'::timestamp;

